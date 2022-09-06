.class public abstract Lcom/miui/home/launcher/gadget/ConfigableGadget;
.super Lcom/miui/home/launcher/gadget/Gadget;
.source "ConfigableGadget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/gadget/Gadget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getItemId()J
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 46
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 48
    new-instance v1, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(I)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    return-void
.end method

.method public onDeleted()V
    .locals 5

    .line 53
    sget-object v0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove gadget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onEditDisable()V
    .locals 0

    return-void
.end method

.method public onEditNormal()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
