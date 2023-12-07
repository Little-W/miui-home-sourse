.class public Lio/requery/android/database/CursorWindow;
.super Lio/requery/android/database/sqlite/SQLiteClosable;


# static fields
.field private static final WINDOW_SIZE_KB:I = 0x800

.field private static final sDefaultCursorWindowSize:I = 0x200000


# instance fields
.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:J

.field private final mWindowSizeBytes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x200000

    invoke-direct {p0, p1, v0}, Lio/requery/android/database/CursorWindow;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    iput p2, p0, Lio/requery/android/database/CursorWindow;->mWindowSizeBytes:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "<unnamed>"

    :goto_0
    iput-object p1, p0, Lio/requery/android/database/CursorWindow;->mName:Ljava/lang/String;

    iget-object p1, p0, Lio/requery/android/database/CursorWindow;->mName:Ljava/lang/String;

    invoke-static {p1, p2}, Lio/requery/android/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget-wide p0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lio/requery/android/database/CursorWindowAllocationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cursor window allocation of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 p2, p2, 0x400

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " kb failed. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/requery/android/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dispose()V
    .locals 5

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lio/requery/android/database/CursorWindow;->nativeDispose(J)V

    iput-wide v2, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    :cond_0
    return-void
.end method

.method private static native nativeAllocRow(J)Z
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFreeLastRow(J)V
.end method

.method private static native nativeGetBlob(JII)[B
.end method

.method private static native nativeGetDouble(JII)D
.end method

.method private static native nativeGetLong(JII)J
.end method

.method private static native nativeGetName(J)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(J)I
.end method

.method private static native nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native nativeGetType(JII)I
.end method

.method private static native nativePutBlob(J[BII)Z
.end method

.method private static native nativePutDouble(JDII)Z
.end method

.method private static native nativePutLong(JJII)Z
.end method

.method private static native nativePutNull(JII)Z
.end method

.method private static native nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(JI)Z
.end method


# virtual methods
.method public allocRow()Z
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lio/requery/android/database/CursorWindow;->nativeAllocRow(J)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lio/requery/android/database/CursorWindow;->nativeClear(J)V

    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    iput-object p0, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length p0, p0

    iput p0, p3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CharArrayBuffer should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lio/requery/android/database/CursorWindow;->nativeFreeLastRow(J)V

    return-void
.end method

.method public getBlob(II)[B
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, p0

    invoke-static {v0, v1, p1, p2}, Lio/requery/android/database/CursorWindow;->nativeGetBlob(JII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDouble(II)D
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, p0

    invoke-static {v0, v1, p1, p2}, Lio/requery/android/database/CursorWindow;->nativeGetDouble(JII)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(II)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/CursorWindow;->getDouble(II)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getInt(II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/CursorWindow;->getLong(II)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getLong(II)J
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, p0

    invoke-static {v0, v1, p1, p2}, Lio/requery/android/database/CursorWindow;->nativeGetLong(JII)J

    move-result-wide p0

    return-wide p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/requery/android/database/CursorWindow;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNumRows()I
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lio/requery/android/database/CursorWindow;->nativeGetNumRows(J)I

    move-result p0

    return p0
.end method

.method public getShort(II)S
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/CursorWindow;->getLong(II)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    return p0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, p0

    invoke-static {v0, v1, p1, p2}, Lio/requery/android/database/CursorWindow;->nativeGetString(JII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(II)I
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, p0

    invoke-static {v0, v1, p1, p2}, Lio/requery/android/database/CursorWindow;->nativeGetType(JII)I

    move-result p0

    return p0
.end method

.method public getWindowSizeBytes()I
    .locals 0

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mWindowSizeBytes:I

    return p0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    invoke-direct {p0}, Lio/requery/android/database/CursorWindow;->dispose()V

    return-void
.end method

.method public putBlob([BII)Z
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int/2addr p2, p0

    invoke-static {v0, v1, p1, p2, p3}, Lio/requery/android/database/CursorWindow;->nativePutBlob(J[BII)Z

    move-result p0

    return p0
.end method

.method public putDouble(DII)Z
    .locals 6

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, p0

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lio/requery/android/database/CursorWindow;->nativePutDouble(JDII)Z

    move-result p0

    return p0
.end method

.method public putLong(JII)Z
    .locals 6

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, p0

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lio/requery/android/database/CursorWindow;->nativePutLong(JJII)Z

    move-result p0

    return p0
.end method

.method public putNull(II)Z
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, p0

    invoke-static {v0, v1, p1, p2}, Lio/requery/android/database/CursorWindow;->nativePutNull(JII)Z

    move-result p0

    return p0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    iget p0, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    sub-int/2addr p2, p0

    invoke-static {v0, v1, p1, p2, p3}, Lio/requery/android/database/CursorWindow;->nativePutString(JLjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public setNumColumns(I)Z
    .locals 2

    iget-wide v0, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Lio/requery/android/database/CursorWindow;->nativeSetNumColumns(JI)Z

    move-result p0

    return p0
.end method

.method public setStartPosition(I)V
    .locals 0

    iput p1, p0, Lio/requery/android/database/CursorWindow;->mStartPos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/requery/android/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/requery/android/database/CursorWindow;->mWindowPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
