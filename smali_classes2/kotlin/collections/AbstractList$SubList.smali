.class final Lkotlin/collections/AbstractList$SubList;
.super Lkotlin/collections/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private _size:I

.field private final fromIndex:I

.field private final list:Lkotlin/collections/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/AbstractList<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Lkotlin/collections/AbstractList$SubList;->list:Lkotlin/collections/AbstractList;

    iput p2, p0, Lkotlin/collections/AbstractList$SubList;->fromIndex:I

    sget-object p1, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget p2, p0, Lkotlin/collections/AbstractList$SubList;->fromIndex:I

    iget-object v0, p0, Lkotlin/collections/AbstractList$SubList;->list:Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Lkotlin/collections/AbstractList;->size()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lkotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    iget p1, p0, Lkotlin/collections/AbstractList$SubList;->fromIndex:I

    sub-int/2addr p3, p1

    iput p3, p0, Lkotlin/collections/AbstractList$SubList;->_size:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/AbstractList$SubList;->_size:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    iget-object v0, p0, Lkotlin/collections/AbstractList$SubList;->list:Lkotlin/collections/AbstractList;

    iget p0, p0, Lkotlin/collections/AbstractList$SubList;->fromIndex:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lkotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lkotlin/collections/AbstractList$SubList;->_size:I

    return p0
.end method
