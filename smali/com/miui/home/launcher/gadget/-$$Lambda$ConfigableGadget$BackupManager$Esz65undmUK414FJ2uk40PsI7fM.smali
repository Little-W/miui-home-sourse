.class public final synthetic Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$Esz65undmUK414FJ2uk40PsI7fM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$Esz65undmUK414FJ2uk40PsI7fM;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$Esz65undmUK414FJ2uk40PsI7fM;->f$0:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->lambda$prepareBackup$384(Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method
