.class Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->onPackageDeleted(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f1101b7

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    return-void
.end method
