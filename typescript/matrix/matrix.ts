class Matrix {
    rows: number[][]
    columns: number[][]
    constructor(matrixString: string) {
        this.rows = this.buildRows(matrixString.split('\n'))
        this.columns = this.buildColumns(this.rows)
    }

    buildRows = (stringArray: string[]) => 
        stringArray.map((row: string) => 
                    row.split(' ')
                    .filter(r => r !== ' ')
                    .map(Number));
    buildColumns = (rows: number[][]) => rows.reduce((acc: number[][], row: number[]) => {
                        row.forEach((c: number, column: number) => {
                            acc[column] = acc[column] ||[]
                            acc[column].push(c)
                        })
                        return acc
                    }, [[]])
   
}

export default Matrix