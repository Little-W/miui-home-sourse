.class public Lcom/miui/home/library/utils/LongArrayMap;
.super Landroid/util/LongSparseArray;
.source "LongArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/util/LongSparseArray;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/library/utils/LongArrayMap;->clone()Lcom/miui/home/library/utils/LongArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/miui/home/library/utils/LongArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/library/utils/LongArrayMap<",
            "TE;>;"
        }
    .end annotation

    .line 38
    invoke-super {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object p0

    check-cast p0, Lcom/miui/home/library/utils/LongArrayMap;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/library/utils/LongArrayMap;->clone()Lcom/miui/home/library/utils/LongArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;

    invoke-direct {v0, p0}, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;-><init>(Lcom/miui/home/library/utils/LongArrayMap;)V

    return-object v0
.end method
