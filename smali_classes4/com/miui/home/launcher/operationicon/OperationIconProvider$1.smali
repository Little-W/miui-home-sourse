.class public final Lcom/miui/home/launcher/operationicon/OperationIconProvider$1;
.super Ljava/lang/Object;
.source "OperationIconProvider.kt"

# interfaces
.implements Lcom/miui/home/library/publishservice/OperationIconService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/operationicon/OperationIconProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/operationicon/OperationIconProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/operationicon/OperationIconProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconProvider$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconProvider$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->getIcon(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
