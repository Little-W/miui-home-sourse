.class Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5$1;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;Z)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5$1;->this$1:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;

    iput-boolean p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5$1;->this$1:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;->val$resultCallback:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5$1;->val$result:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
