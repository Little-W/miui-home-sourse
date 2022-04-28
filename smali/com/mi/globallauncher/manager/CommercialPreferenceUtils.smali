.class public Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;
.super Lcom/miui/privacy/utils/BaseSharePreference;
.source "CommercialPreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/manager/CommercialPreferenceUtils$Holder;
    }
.end annotation


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "launcher_sharedpreference"


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "launcher_sharedpreference"

    .line 12
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/privacy/utils/BaseSharePreference;-><init>(Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/globallauncher/manager/CommercialPreferenceUtils$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;
    .locals 1

    .line 20
    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils$Holder;->access$100()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEnterFolderTimestamp()J
    .locals 3

    const-string v0, "click_folder_timestamp"

    const-wide/16 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowNewFeatureCounts()I
    .locals 2

    const-string v0, "show_new_feature_counts"

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShowNewFeatureTime()J
    .locals 3

    const-string v0, "show_new_feature_time"

    const-wide/16 v1, 0x0

    .line 53
    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateDrawerModeForCloudConfig()Z
    .locals 2

    const-string v0, "update_drawer_mode_for_cloud_config"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasChangedDrawerMode()Z
    .locals 2

    const-string v0, "mihome_drawer_mode_changed"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hideSettingsTip()V
    .locals 2

    const-string v0, "need_show_setting_tip"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public isChangeToDrawerForBranch()Z
    .locals 2

    const-string v0, "change_to_drawer_for_branch"

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDragIconToHomeGuideShow()Z
    .locals 2

    const-string v0, "drag_icon_to_home_guide"

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstTimeEnterDrawer()Z
    .locals 2

    const-string v0, "first_time_enter_drawer"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNewFeatureFirstShow()Z
    .locals 2

    const-string v0, "new_feature_first_show"

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNewFeatureShowed()Z
    .locals 2

    const-string v0, "new_feature_show"

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public needShowSettingTip()Z
    .locals 2

    const-string v0, "need_show_setting_tip"

    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetShowNewFeatureCounts()V
    .locals 2

    const-string v0, "show_new_feature_counts"

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public resetShowNewFeatureTime()V
    .locals 3

    const-string v0, "show_new_feature_time"

    const-wide/16 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setChangeToDrawerForBranch()V
    .locals 2

    const-string v0, "change_to_drawer_for_branch"

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDragIconToHomeGuideShow()V
    .locals 2

    const-string v0, "drag_icon_to_home_guide"

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEnterFolderTimestamp(J)V
    .locals 1

    const-string v0, "click_folder_timestamp"

    .line 81
    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setFirstTimeEnterDrawer(Z)V
    .locals 1

    const-string v0, "first_time_enter_drawer"

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasChangedDrawerMode(Z)V
    .locals 1

    const-string v0, "mihome_drawer_mode_changed"

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNewFeatureFirstShow(Z)V
    .locals 1

    const-string v0, "new_feature_first_show"

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNewFeatureShowed(Z)V
    .locals 1

    const-string v0, "new_feature_show"

    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUpdateDrawerModeForCloudConfig(Z)V
    .locals 1

    const-string v0, "update_drawer_mode_for_cloud_config"

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateShowNewFeatureCounts()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getShowNewFeatureCounts()I

    move-result v0

    const-string v1, "show_new_feature_counts"

    add-int/lit8 v0, v0, 0x1

    .line 45
    invoke-virtual {p0, v1, v0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public updateShowNewFeatureTime()V
    .locals 3

    const-string v0, "show_new_feature_time"

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method
