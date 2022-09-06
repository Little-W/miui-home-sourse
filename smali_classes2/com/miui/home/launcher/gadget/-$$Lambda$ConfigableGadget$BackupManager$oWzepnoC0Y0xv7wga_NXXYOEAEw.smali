.class public final synthetic Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$oWzepnoC0Y0xv7wga_NXXYOEAEw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$oWzepnoC0Y0xv7wga_NXXYOEAEw;->f$0:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iput-object p2, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$oWzepnoC0Y0xv7wga_NXXYOEAEw;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$oWzepnoC0Y0xv7wga_NXXYOEAEw;->f$0:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$oWzepnoC0Y0xv7wga_NXXYOEAEw;->f$1:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->lambda$prepareBackup$1(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method
