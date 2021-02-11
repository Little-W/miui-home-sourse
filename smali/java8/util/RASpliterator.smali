.class final Ljava8/util/RASpliterator;
.super Ljava/lang/Object;
.source "RASpliterator.java"

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
.field private static final MODCOUNT_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private final alist:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/RASpliterator;->U:Lsun/misc/Unsafe;

    .line 156
    :try_start_0
    sget-object v0, Ljava8/util/RASpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/RASpliterator;->MODCOUNT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;III)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    .line 58
    iput p2, p0, Ljava8/util/RASpliterator;->index:I

    .line 59
    iput p3, p0, Ljava8/util/RASpliterator;->fence:I

    .line 61
    instance-of p2, p1, Ljava/util/AbstractList;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/util/AbstractList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ljava8/util/RASpliterator;->alist:Ljava/util/AbstractList;

    .line 63
    iput p4, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    return-void
.end method

.method private static checkAbsListModCount(Ljava/util/AbstractList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "*>;I)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 142
    invoke-static {p0}, Ljava8/util/RASpliterator;->getModCount(Ljava/util/List;)I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private getFence()I
    .locals 2

    .line 72
    iget-object v0, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    .line 73
    iget v1, p0, Ljava8/util/RASpliterator;->fence:I

    if-gez v1, :cond_1

    .line 74
    iget-object v1, p0, Ljava8/util/RASpliterator;->alist:Ljava/util/AbstractList;

    if-eqz v1, :cond_0

    .line 75
    invoke-static {v1}, Ljava8/util/RASpliterator;->getModCount(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Ljava8/util/RASpliterator;->fence:I

    :cond_1
    return v1
.end method

.method private static getModCount(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 148
    sget-object v0, Ljava8/util/RASpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/RASpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static spliterator(Ljava/util/List;)Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava8/util/RASpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava8/util/RASpliterator;-><init>(Ljava/util/List;III)V

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

    .line 119
    invoke-direct {p0}, Ljava8/util/RASpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/RASpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    .line 104
    invoke-direct {p0}, Ljava8/util/RASpliterator;->getFence()I

    move-result v1

    .line 105
    iget v2, p0, Ljava8/util/RASpliterator;->index:I

    .line 106
    iput v1, p0, Ljava8/util/RASpliterator;->index:I

    :goto_0
    if-ge v2, v1, :cond_0

    .line 109
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 115
    :cond_0
    iget-object p1, p0, Ljava8/util/RASpliterator;->alist:Ljava/util/AbstractList;

    iget v0, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    invoke-static {p1, v0}, Ljava8/util/RASpliterator;->checkAbsListModCount(Ljava/util/AbstractList;I)V

    return-void
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

    .line 138
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 128
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 133
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

    .line 90
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-direct {p0}, Ljava8/util/RASpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/RASpliterator;->index:I

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 93
    iput v0, p0, Ljava8/util/RASpliterator;->index:I

    .line 94
    iget-object v0, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Ljava8/util/RASpliterator;->alist:Ljava/util/AbstractList;

    iget v0, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    invoke-static {p1, v0}, Ljava8/util/RASpliterator;->checkAbsListModCount(Ljava/util/AbstractList;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava8/util/RASpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/RASpliterator;->index:I

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v2, Ljava8/util/RASpliterator;

    iget-object v3, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    iput v0, p0, Ljava8/util/RASpliterator;->index:I

    iget v4, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    invoke-direct {v2, v3, v1, v0, v4}, Ljava8/util/RASpliterator;-><init>(Ljava/util/List;III)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method
