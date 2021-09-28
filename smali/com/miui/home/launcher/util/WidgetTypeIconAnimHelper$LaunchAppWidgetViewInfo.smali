.class public Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;
.super Ljava/lang/Object;
.source "WidgetTypeIconAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchAppWidgetViewInfo"
.end annotation


# instance fields
.field mAppClass:Ljava/lang/String;

.field mAppPackage:Ljava/lang/String;

.field mOptions:Landroid/os/Bundle;

.field mPendingStartAppPackage:Ljava/lang/String;

.field mScreenId:J

.field mStartActivityWidgetRect:Landroid/graphics/Rect;

.field mStartActivityWidgetView:Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptions()Landroid/os/Bundle;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScreenId()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mScreenId:J

    return-wide v0
.end method

.method public getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mStartActivityWidgetView:Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    return-object v0
.end method

.method public isMatchClosingAppPackage(Ljava/lang/String;)Z
    .locals 2

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mPendingStartAppPackage:Ljava/lang/String;

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppClass:Ljava/lang/String;

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppClass:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setPendingStartAppPackage(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mPendingStartAppPackage:Ljava/lang/String;

    return-void
.end method
