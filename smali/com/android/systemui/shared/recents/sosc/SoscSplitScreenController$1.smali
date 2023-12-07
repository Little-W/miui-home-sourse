.class Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$1;->this$0:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$1;->this$0:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->access$100(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->access$002(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSoscSplitScreen: mIsEnable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$1;->this$0:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->access$000(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoscSplitStateController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
