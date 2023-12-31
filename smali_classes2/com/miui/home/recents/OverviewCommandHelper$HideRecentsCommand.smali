.class Lcom/miui/home/recents/OverviewCommandHelper$HideRecentsCommand;
.super Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;
.source "OverviewCommandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideRecentsCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/OverviewCommandHelper;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$HideRecentsCommand;->this$0:Lcom/miui/home/recents/OverviewCommandHelper;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;-><init>(Lcom/miui/home/recents/OverviewCommandHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper;Lcom/miui/home/recents/OverviewCommandHelper$1;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/miui/home/recents/OverviewCommandHelper$HideRecentsCommand;-><init>(Lcom/miui/home/recents/OverviewCommandHelper;)V

    return-void
.end method


# virtual methods
.method protected handleCommand(J)Z
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/miui/home/recents/OverviewCommandHelper$HideRecentsCommand;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    invoke-interface {p0}, Lcom/miui/home/recents/ActivityControlHelper;->getVisibleRecentsView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
