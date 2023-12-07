.class public abstract Lio/requery/android/database/sqlite/SQLiteProgram;
.super Lio/requery/android/database/sqlite/SQLiteClosable;

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private final mColumnNames:[Ljava/lang/String;

.field private final mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

.field private final mNumParameters:I

.field private final mReadOnly:Z

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    .locals 4

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;-><init>()V

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {p2}, Lio/requery/android/database/sqlite/SQLiteStatementType;->getSqlStatementType(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;

    invoke-direct {p2}, Lio/requery/android/database/sqlite/SQLiteStatementInfo;-><init>()V

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v2

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result p1

    invoke-virtual {v2, v3, p1, p4, p2}, Lio/requery/android/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;Lio/requery/android/database/sqlite/SQLiteStatementInfo;)V

    iget-boolean p1, p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    iput-boolean p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mReadOnly:Z

    iget-object p1, p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    iget p1, p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->numParameters:I

    iput p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mReadOnly:Z

    sget-object p1, Lio/requery/android/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    iput v1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    :goto_1
    if-eqz p3, :cond_3

    array-length p1, p3

    iget p2, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Too many bind arguments.  "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " arguments were provided but the statement needs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " arguments."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    iget p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz p1, :cond_4

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz p3, :cond_5

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    array-length p1, p3

    invoke-static {p3, v1, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method

.method private bind(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, v1, :cond_0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    sub-int/2addr p1, v0

    aput-object p2, p0, p1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot bind argument at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because the index is out of range.  The statement has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " parameters."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindBlob(I[B)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the bind value at index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bindDouble(ID)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindObject(ILjava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_6

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    :cond_4
    instance-of v0, p2, [B

    if-eqz v0, :cond_5

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    :goto_1
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the bind value at index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearBindings()V
    .locals 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final getBindArgs()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object p0
.end method

.method final getColumnNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object p0
.end method

.method protected final getConnectionFlags()I
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    iget-boolean p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result p0

    return p0
.end method

.method final getDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method protected final getSession()Lio/requery/android/database/sqlite/SQLiteSession;
    .locals 0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object p0

    return-object p0
.end method

.method final getSql()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object p0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void
.end method

.method protected final onCorruption()V
    .locals 0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->onCorruption()V

    return-void
.end method
