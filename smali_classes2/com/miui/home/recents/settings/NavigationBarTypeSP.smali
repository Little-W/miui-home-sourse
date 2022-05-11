.class public Lcom/miui/home/recents/settings/NavigationBarTypeSP;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "NavigationBarTypeSP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/settings/NavigationBarTypeSP$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "full_screen_settings"

    .line 11
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;
    .locals 1

    .line 19
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP$Holder;->access$000()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isNeedShowGestureLineGuide()Z
    .locals 2

    const-string v0, "need_show_gesture_line_guide"

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNeedShowNavGuide()Z
    .locals 2

    const-string v0, "need_show_navigation_guide"

    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setNeedShowGestureLineGuide(Z)V
    .locals 1

    const-string v0, "need_show_gesture_line_guide"

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNeedShowNavGuide(Z)V
    .locals 1

    const-string v0, "need_show_navigation_guide"

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
