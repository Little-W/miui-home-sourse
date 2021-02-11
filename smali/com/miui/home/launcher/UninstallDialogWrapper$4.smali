.class Lcom/miui/home/launcher/UninstallDialogWrapper$4;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialogAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$4;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const v0, 0x7f100071

    .line 194
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    return-void
.end method
