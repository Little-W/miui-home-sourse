.class Lmiuix/animation/listener/ListenerNotifier$PendingNotify;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingNotify"
.end annotation


# instance fields
.field tag:Ljava/lang/Object;

.field what:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 169
    iput v0, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->what:I

    return-void
.end method


# virtual methods
.method isSame(Ljava/lang/Object;I)Z
    .locals 2

    .line 177
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->what:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setData(Ljava/lang/Object;I)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    .line 173
    iput p2, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->what:I

    return-void
.end method
