.class public Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshMessage;
.super Ljava/lang/Object;
.source "PushRefreshMessage.java"


# instance fields
.field private mPushRefreshBean:Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshMessage;->mPushRefreshBean:Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;

    return-void
.end method


# virtual methods
.method public getPushRefreshBean()Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshMessage;->mPushRefreshBean:Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;

    return-object v0
.end method
