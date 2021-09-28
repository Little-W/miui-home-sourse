.class public Lcom/miui/home/launcher/CategorySettingHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "CategorySettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CategorySettingHelper$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "category"

    .line 13
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/CategorySettingHelper$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/miui/home/launcher/CategorySettingHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/CategorySettingHelper;
    .locals 1

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper$Holder;->access$100()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableAppCategoryUpdateEnable()V
    .locals 2

    const-string v0, "app_category_update_enable"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CategorySettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public getAppCategoryUpdateVersionCode()I
    .locals 2

    const-string v0, "app_category_update_version_code"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CategorySettingHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getAppCategoryVersion(I)I
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_category_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CategorySettingHelper;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isAppCategoryUpdateEnable()Z
    .locals 2

    const-string v0, "app_category_update_enable"

    const/4 v1, 0x1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CategorySettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInitAppCategory()Z
    .locals 2

    const-string v0, "app_category_init"

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CategorySettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setAppCategoryUpdateVersionCode()V
    .locals 2

    const-string v0, "app_category_update_version_code"

    const v1, 0x1936848d

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CategorySettingHelper;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method setAppCategoryVersion(II)V
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_category_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/CategorySettingHelper;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setInitAppCategoryDone()V
    .locals 2

    const-string v0, "app_category_init"

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CategorySettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
