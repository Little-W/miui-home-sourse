.class final Ljava8/util/ArrayListSpliterator;
.super Ljava/lang/Object;
.source "ArrayListSpliterator.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final DATA_OFF:J

.field private static final MODCOUNT_OFF:J

.field private static final SIZE_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 190
    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    .line 196
    :try_start_0
    sget-object v0, Ljava8/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/ArrayListSpliterator;->MODCOUNT_OFF:J

    .line 198
    sget-object v0, Ljava8/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/ArrayList;

    const-string v2, "size"

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/ArrayListSpliterator;->SIZE_OFF:J

    .line 200
    sget-boolean v0, Ljava8/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-eqz v0, :cond_0

    const-string v0, "array"

    goto :goto_0

    :cond_0
    const-string v0, "elementData"

    .line 202
    :goto_0
    sget-object v1, Ljava8/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 202
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/ArrayListSpliterator;->DATA_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;III)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Ljava8/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    .line 82
    iput p2, p0, Ljava8/util/ArrayListSpliterator;->index:I

    .line 83
    iput p3, p0, Ljava8/util/ArrayListSpliterator;->fence:I

    .line 84
    iput p4, p0, Ljava8/util/ArrayListSpliterator;->expectedModCount:I

    return-void
.end method

.method private static getData(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 186
    sget-object v0, Ljava8/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/ArrayListSpliterator;->DATA_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private getFence()I
    .locals 2

    .line 93
    iget v0, p0, Ljava8/util/ArrayListSpliterator;->fence:I

    if-gez v0, :cond_0

    .line 94
    iget-object v0, p0, Ljava8/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    .line 95
    invoke-static {v0}, Ljava8/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v1

    iput v1, p0, Ljava8/util/ArrayListSpliterator;->expectedModCount:I

    .line 96
    invoke-static {v0}, Ljava8/util/ArrayListSpliterator;->getSize(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Ljava8/util/ArrayListSpliterator;->fence:I

    :cond_0
    return v0
.end method

.method private static getModCount(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)I"
        }
    .end annotation

    .line 182
    sget-object v0, Ljava8/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/ArrayListSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static getSize(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)I"
        }
    .end annotation

    .line 178
    sget-object v0, Ljava8/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/ArrayListSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static spliterator(Ljava/util/ArrayList;)Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava8/util/ArrayListSpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava8/util/ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava8/util/ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/ArrayListSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 127
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Ljava8/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    .line 131
    invoke-static {v0}, Ljava8/util/ArrayListSpliterator;->getData(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 132
    iget v2, p0, Ljava8/util/ArrayListSpliterator;->fence:I

    if-gez v2, :cond_0

    .line 133
    invoke-static {v0}, Ljava8/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v2

    .line 134
    invoke-static {v0}, Ljava8/util/ArrayListSpliterator;->getSize(Ljava/util/ArrayList;)I

    move-result v3

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_0

    .line 137
    :cond_0
    iget v3, p0, Ljava8/util/ArrayListSpliterator;->expectedModCount:I

    .line 139
    :goto_0
    iget v4, p0, Ljava8/util/ArrayListSpliterator;->index:I

    if-ltz v4, :cond_2

    iput v2, p0, Ljava8/util/ArrayListSpliterator;->index:I

    array-length v5, v1

    if-gt v2, v5, :cond_2

    :goto_1
    if-ge v4, v2, :cond_1

    .line 141
    aget-object v5, v1, v4

    .line 142
    invoke-interface {p1, v5}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 144
    :cond_1
    invoke-static {v0}, Ljava8/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result p1

    if-ne v3, p1, :cond_2

    return-void

    .line 149
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 164
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 169
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 174
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 111
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {p0}, Ljava8/util/ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/ArrayListSpliterator;->index:I

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 114
    iput v0, p0, Ljava8/util/ArrayListSpliterator;->index:I

    .line 115
    iget-object v0, p0, Ljava8/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava8/util/ArrayListSpliterator;->getData(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    .line 116
    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 117
    iget p1, p0, Ljava8/util/ArrayListSpliterator;->expectedModCount:I

    iget-object v0, p0, Ljava8/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava8/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/ArrayListSpliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/ArrayListSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava8/util/ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/ArrayListSpliterator;->index:I

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v2, Ljava8/util/ArrayListSpliterator;

    iget-object v3, p0, Ljava8/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iput v0, p0, Ljava8/util/ArrayListSpliterator;->index:I

    iget v4, p0, Ljava8/util/ArrayListSpliterator;->expectedModCount:I

    invoke-direct {v2, v3, v1, v0, v4}, Ljava8/util/ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Ljava8/util/ArrayListSpliterator;->trySplit()Ljava8/util/ArrayListSpliterator;

    move-result-object v0

    return-object v0
.end method
