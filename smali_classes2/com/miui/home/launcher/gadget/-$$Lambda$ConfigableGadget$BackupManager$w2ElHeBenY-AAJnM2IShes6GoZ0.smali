.class public final synthetic Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:J

.field private final synthetic f$3:Lcom/miui/home/launcher/gadget/GadgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;->f$0:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iput-object p2, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;->f$1:Landroid/content/Context;

    iput-wide p3, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;->f$2:J

    iput-object p5, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;->f$3:Lcom/miui/home/launcher/gadget/GadgetInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;->f$0:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;->f$1:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;->f$2:J

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;->f$3:Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->lambda$prepareBackup$0$ConfigableGadget$BackupManager(Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
