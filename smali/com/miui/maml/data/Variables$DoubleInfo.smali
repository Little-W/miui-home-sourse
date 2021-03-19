.class Lcom/miui/maml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleInfo"
.end annotation


# instance fields
.field mValue:D

.field mVersion:I


# direct methods
.method public constructor <init>(DI)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 25
    iput p3, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public setValue(D)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 30
    iget p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    return-void
.end method
