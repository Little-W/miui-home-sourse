.class Lcom/miui/home/launcher/Launcher$77;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->changeAlphaScale(FFIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Launcher$77$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$alpha:F

.field final synthetic val$iconPivotX:I

.field final synthetic val$iconPivotY:I

.field final synthetic val$scale:F

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;FFIIZ)V
    .locals 0

    .line 7922
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$77;->this$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/Launcher$77;->val$alpha:F

    iput p3, p0, Lcom/miui/home/launcher/Launcher$77;->val$scale:F

    iput p4, p0, Lcom/miui/home/launcher/Launcher$77;->val$iconPivotX:I

    iput p5, p0, Lcom/miui/home/launcher/Launcher$77;->val$iconPivotY:I

    iput-boolean p6, p0, Lcom/miui/home/launcher/Launcher$77;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "Launcher"

    const-string v1, "change shortcutMenuLayer alpha and scale by FsCallback"

    .line 7924
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$77$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 7925
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$77;->this$0:Lcom/miui/home/launcher/Launcher;

    iget v3, p0, Lcom/miui/home/launcher/Launcher$77;->val$alpha:F

    iget v4, p0, Lcom/miui/home/launcher/Launcher$77;->val$scale:F

    iget v5, p0, Lcom/miui/home/launcher/Launcher$77;->val$iconPivotX:I

    iget v6, p0, Lcom/miui/home/launcher/Launcher$77;->val$iconPivotY:I

    iget-boolean v7, p0, Lcom/miui/home/launcher/Launcher$77;->val$visible:Z

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/Launcher;->changeShortcutMenuLayerAlphaScale(FFIIZ)V

    return-void
.end method
