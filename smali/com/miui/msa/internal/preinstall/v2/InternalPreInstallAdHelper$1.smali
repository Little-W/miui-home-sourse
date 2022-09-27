.class Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper$1;
.super Ljava/lang/Object;
.source "InternalPreInstallAdHelper.java"

# interfaces
.implements Lcom/miui/msa/internal/preinstall/v1/ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v2/ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

.field final synthetic val$imageCallback:Lcom/miui/msa/internal/preinstall/v2/ImageCallback;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;Lcom/miui/msa/internal/preinstall/v2/ImageCallback;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper$1;->this$0:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    iput-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper$1;->val$imageCallback:Lcom/miui/msa/internal/preinstall/v2/ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadFailed(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper$1;->val$imageCallback:Lcom/miui/msa/internal/preinstall/v2/ImageCallback;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/ImageCallback;->onImageLoadFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper$1;->val$imageCallback:Lcom/miui/msa/internal/preinstall/v2/ImageCallback;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/ImageCallback;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
