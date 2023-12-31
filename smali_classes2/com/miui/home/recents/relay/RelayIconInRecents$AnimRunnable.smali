.class Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;
.super Ljava/lang/Object;
.source "RelayIconInRecents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/relay/RelayIconInRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimRunnable"
.end annotation


# instance fields
.field private show:Z

.field final synthetic this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/relay/RelayIconInRecents;Z)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-boolean p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->show:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-static {v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->access$200(Lcom/miui/home/recents/relay/RelayIconInRecents;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->show:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    new-array v4, v3, [F

    const/high16 v5, 0x43960000    # 300.0f

    aput v5, v4, v2

    .line 204
    invoke-static {v1, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 205
    fill-array-data v4, :array_0

    invoke-static {v1, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    .line 203
    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    new-array v0, v3, [Landroid/view/View;

    .line 206
    iget-object v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->show:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    iget-object v1, v1, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconAnimStateShow:Lmiuix/animation/controller/AnimState;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    iget-object v1, v1, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconAnimStateHide:Lmiuix/animation/controller/AnimState;

    :goto_1
    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    iget-object v4, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-static {v4}, Lcom/miui/home/recents/relay/RelayIconInRecents;->access$200(Lcom/miui/home/recents/relay/RelayIconInRecents;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 207
    iget-object p0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->access$302(Lcom/miui/home/recents/relay/RelayIconInRecents;Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;)Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data
.end method
