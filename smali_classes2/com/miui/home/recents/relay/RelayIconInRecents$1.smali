.class Lcom/miui/home/recents/relay/RelayIconInRecents$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "RelayIconInRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/relay/RelayIconInRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$1;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "hide"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$1;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setVisibility(I)V

    :cond_0
    return-void
.end method
