.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;
.super Ljava/lang/Object;
.source "MultiAppFloatingActivitySwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyPreviousActivitySlide(Lmiuix/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

.field final synthetic val$activitySpec:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;->val$activitySpec:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 500
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;->val$activitySpec:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    iget-object v1, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getIdentity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "execute_slide"

    .line 502
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    const/16 v2, 0xa

    invoke-static {v0, v2, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$400(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
