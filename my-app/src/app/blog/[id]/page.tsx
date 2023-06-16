export default function Page(a: { params: { id: string } }) {
    return <main>My Post: {a.params.id}</main>
  }