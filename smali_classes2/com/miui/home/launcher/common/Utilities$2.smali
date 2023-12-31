.class Lcom/miui/home/launcher/common/Utilities$2;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$resId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1466
    iput p1, p0, Lcom/miui/home/launcher/common/Utilities$2;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1466
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/Utilities$2;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 1469
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/launcher/common/Utilities$2;->val$resId:I

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
