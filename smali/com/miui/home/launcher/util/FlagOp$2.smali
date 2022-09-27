.class Lcom/miui/home/launcher/util/FlagOp$2;
.super Lcom/miui/home/launcher/util/FlagOp;
.source "FlagOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/FlagOp;->addFlag(I)Lcom/miui/home/launcher/util/FlagOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$flag:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/miui/home/launcher/util/FlagOp$2;->val$flag:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/FlagOp;-><init>(Lcom/miui/home/launcher/util/FlagOp$1;)V

    return-void
.end method


# virtual methods
.method public apply(I)I
    .locals 1

    .line 17
    iget v0, p0, Lcom/miui/home/launcher/util/FlagOp$2;->val$flag:I

    or-int/2addr p1, v0

    return p1
.end method
