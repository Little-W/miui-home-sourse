.class Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;
.super Ljava/lang/Object;
.source "LongArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/LongArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mNextIndex:I

.field final synthetic this$0:Lcom/miui/home/library/utils/LongArrayMap;


# direct methods
.method constructor <init>(Lcom/miui/home/library/utils/LongArrayMap;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;->this$0:Lcom/miui/home/library/utils/LongArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;->mNextIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 52
    iget v0, p0, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;->mNextIndex:I

    iget-object p0, p0, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;->this$0:Lcom/miui/home/library/utils/LongArrayMap;

    invoke-virtual {p0}, Lcom/miui/home/library/utils/LongArrayMap;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;->this$0:Lcom/miui/home/library/utils/LongArrayMap;

    iget v1, p0, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;->mNextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/miui/home/library/utils/LongArrayMap$ValueIterator;->mNextIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 62
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
