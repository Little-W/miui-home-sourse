.class Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataIndexMap"
.end annotation


# instance fields
.field public mData:[Ljava/lang/Object;

.field public mElementIndex:I

.field public mNeedRebind:Z


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 157
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 152
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 153
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    return-void
.end method


# virtual methods
.method public setData(ILjava/lang/Object;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 162
    aput-object p2, v0, p1

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    :cond_0
    return-void
.end method
