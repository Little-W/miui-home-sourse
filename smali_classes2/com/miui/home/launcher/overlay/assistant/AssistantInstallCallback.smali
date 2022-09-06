.class public Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;
.super Ljava/lang/Object;
.source "AssistantInstallCallback.java"


# direct methods
.method private static getLauncherMaMls()Lorg/json/JSONArray;
    .locals 3

    .line 92
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$T5HAVh8Ks015668gUM0qUovjcKE;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$T5HAVh8Ks015668gUM0qUovjcKE;

    .line 97
    invoke-static {v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 99
    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ZVRRhvTvLvCN-xw6zIgDJXQrvxE;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ZVRRhvTvLvCN-xw6zIgDJXQrvxE;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method static getMaMls(Landroid/os/Bundle;)V
    .locals 4

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->getLauncherMaMls()Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "AssistantInstallCallback"

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaMls size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "maml_list"

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getLauncherMaMls$6(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    iget p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$getLauncherMaMls$7(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lorg/json/JSONObject;
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->mamlToJSon(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getLauncherMaMls$8(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic lambda$getLauncherMaMls$9(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 100
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ftKPbQ7bD6X_GmUlD-O4hS1ChNA;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ftKPbQ7bD6X_GmUlD-O4hS1ChNA;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$DJXnk_sNohae8rD-w5cBof0YJH0;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$DJXnk_sNohae8rD-w5cBof0YJH0;

    .line 101
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$BQ1txbx99XDbDW9Qj66P_CFiXVs;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$BQ1txbx99XDbDW9Qj66P_CFiXVs;-><init>(Lorg/json/JSONArray;)V

    .line 102
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$upgradeMaMl$0(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->upgradeMaMl(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$upgradeMaMl$1(Ljava/lang/String;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 0

    .line 69
    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$upgradeMaMl$2(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    iget p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$upgradeMaMl$3(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromThemeApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$upgradeMaMl$4(Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 0

    .line 77
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->notifyMaMlUpgraded(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$upgradeMaMl$5(ILjava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 2

    .line 72
    iget p4, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    if-le p0, p4, :cond_0

    const-string p4, "AssistantInstallCallback"

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upgradeMaMl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " productId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;

    invoke-direct {p1, p3, p2, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;I)V

    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$aga4ekbEUlEbGtWQRWPtOwZRVEE;

    invoke-direct {p3, p2, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$aga4ekbEUlEbGtWQRWPtOwZRVEE;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 79
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p2

    .line 74
    invoke-static {p1, p3, p0, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    const-string p0, "AssistantInstallCallback"

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No maml widgets, skip upgrade maml "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " productId = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static mamlToJSon(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lorg/json/JSONObject;
    .locals 3

    .line 110
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "maml_product_id"

    .line 111
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "maml_version"

    .line 112
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "maml_title"

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static notifyMaMlUpgraded(Ljava/lang/String;I)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/model/MamlUpdateTask;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/model/MamlUpdateTask;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method private static upgradeMaMl(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$03j5xMnyZaM8DnSSoN_e9Bi1Xoc;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$03j5xMnyZaM8DnSSoN_e9Bi1Xoc;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$Ulbva00MGge1LKzV6uT_dD9EBo8;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$Ulbva00MGge1LKzV6uT_dD9EBo8;

    .line 70
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;

    invoke-direct {v1, p3, p2, p1, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/Launcher;)V

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static upgradeMaMl(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static upgradeMaMls(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AssistantInstallCallback"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeMaMls = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "maml_list"

    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "maml_product_id"

    .line 48
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "maml_version"

    .line 49
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "maml_title"

    .line 50
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-static {v3, v2, v4}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->upgradeMaMl(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AssistantInstallCallback"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeMaMl failure err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
