mixin GqlQuery {
  static String charactersQuery = '''
  query (\$page: Int!){
    characters(page: \$page){
      results{
        id
        name
        status
        species
        type
        gender
        image
        created
      }
    }
  }
  ''';

  static String searchQuery = '''
  query (\$name: String!){
    characters(filter: { name: \$name }){
      results{
        id
        name
        status
        species
        type
        gender
        image
        created
      }
    }
  }
  ''';
}
