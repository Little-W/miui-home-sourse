.class Lcom/miui/msa/internal/preinstall/v2/utils/GlobalHolder$1;
.super Ljava/lang/Object;
.source "GlobalHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/utils/GlobalHolder;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/utils/GlobalHolder;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    return-void
.end method
