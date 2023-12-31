.class Lcom/miui/home/recents/LauncherActivityControllerHelper$1;
.super Ljava/lang/Object;
.source "LauncherActivityControllerHelper.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/LauncherActivityControllerHelper;->prepareRecentsUI(Lcom/miui/home/launcher/Launcher;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/LauncherActivityControllerHelper;

.field final synthetic val$activity:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$callback:Ljava/util/function/Consumer;

.field final synthetic val$fromState:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/LauncherActivityControllerHelper;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Ljava/util/function/Consumer;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;->this$0:Lcom/miui/home/recents/LauncherActivityControllerHelper;

    iput-object p2, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;->val$activity:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;->val$fromState:Lcom/miui/home/launcher/LauncherState;

    iput-object p4, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivityController(J)V
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;->this$0:Lcom/miui/home/recents/LauncherActivityControllerHelper;

    iget-object v1, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;->val$activity:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;->val$fromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v5, p0, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;->val$callback:Ljava/util/function/Consumer;

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->access$000(Lcom/miui/home/recents/LauncherActivityControllerHelper;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;JLjava/util/function/Consumer;)V

    return-void
.end method
