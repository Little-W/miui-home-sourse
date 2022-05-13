.class Lcom/miui/home/launcher/LauncherModel$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->loadFreeStyleNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;

.field final synthetic val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field final synthetic val$freeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 0

    .line 2706
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$11;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$11;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$11;->val$freeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2708
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$11;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$11;->val$freeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindFreeStyleLoaded(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-void
.end method
