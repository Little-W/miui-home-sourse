.class Lcom/miui/home/launcher/Launcher$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 2226
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$13;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x4

    .line 2230
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x3

    .line 2229
    new-array p1, p1, [Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$13;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$13;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$13;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$13$rQGzRnUYRcyTPny75i4u5Ev7Z7Q;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$13$rQGzRnUYRcyTPny75i4u5Ev7Z7Q;

    .line 2230
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
