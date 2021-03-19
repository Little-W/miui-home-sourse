.class public Lcom/miui/home/launcher/SearchBarStyleProvider;
.super Landroid/content/ContentProvider;
.source "SearchBarStyleProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;
    }
.end annotation


# static fields
.field private static final LEFT_ICONS:[Ljava/lang/String;

.field private static final RIGHT_ICONS:[Ljava/lang/String;

.field private static final STYLE_1:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

.field private static final STYLE_2:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

.field private static final STYLE_3:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

.field private static final STYLE_4:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

.field private static final STYLE_5:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

.field private static final STYLE_6:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

.field private static final STYLE_7:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;


# instance fields
.field private mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 45
    new-instance v7, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    const-string v2, "android.resource://com.miui.home/drawable/bg_search_bar_white85_black5"

    const-string v3, "android.resource://com.miui.home/drawable/search_bar_left_search_blue"

    const-string v4, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_blue"

    const-string v6, "qsb-sbs-1"

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_1:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 46
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    const-string v10, "android.resource://com.miui.home/drawable/bg_search_bar_white85_black5"

    const-string v11, "android.resource://com.miui.home/drawable/search_bar_left_search_blue"

    const-string v12, "android.resource://com.miui.home/drawable/search_bar_right_microphone_blue"

    const-string v14, "qsb-sbs-2"

    const/4 v9, 0x1

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_2:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 47
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    const-string v3, "android.resource://com.miui.home/drawable/bg_search_bar_white85_black5"

    const-string v4, "android.resource://com.miui.home/drawable/search_bar_left_baidu_blue"

    const-string v5, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_colorful"

    const-string v7, "qsb-sbs-3"

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_3:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 48
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    const-string v10, "android.resource://com.miui.home/drawable/bg_search_bar_black20_white10"

    const-string v11, "android.resource://com.miui.home/drawable/search_bar_left_search_white"

    const-string v12, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_white"

    const-string v14, "qsb-sbs-4"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_4:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 49
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    const-string v3, "android.resource://com.miui.home/drawable/bg_search_bar_black8_white11"

    const-string v4, "android.resource://com.miui.home/drawable/search_bar_left_search_white"

    const-string v5, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_white"

    const-string v7, "qsb-sbs-6"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_6:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 51
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    const-string v10, "android.resource://com.miui.home/drawable/bg_search_bar_d9_15_non"

    const-string v11, "android.resource://com.miui.home/drawable/search_bar_left_search_white"

    const-string v12, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_white"

    const-string v13, "{\"blurRadius\":12,\"blurLayer\":[{\"color\":\"#4D4D4D4D\",\"blendMode\":18}]}"

    const-string v14, "qsb-sbs-5"

    const/4 v9, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_5:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 52
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    const-string v3, "android.resource://com.miui.home/drawable/bg_search_bar_e3_25_non"

    const-string v4, "android.resource://com.miui.home/drawable/search_bar_left_search_white"

    const-string v5, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_white"

    const-string v6, "{\"blurRadius\":12,\"blurLayer\":[{\"color\":\"#85585858\",\"blendMode\":18}]}"

    const-string v7, "qsb-sbs-7"

    const/4 v2, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_7:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    const-string v0, "android.resource://com.miui.home/drawable/search_bar_left_baidu_blue"

    const-string v1, "android.resource://com.miui.home/drawable/search_bar_left_baidu_white"

    const-string v2, "android.resource://com.miui.home/drawable/search_bar_left_search_blue"

    const-string v3, "android.resource://com.miui.home/drawable/search_bar_left_search_white"

    .line 54
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleProvider;->LEFT_ICONS:[Ljava/lang/String;

    const-string v0, "android.resource://com.miui.home/drawable/search_bar_right_microphone_blue"

    const-string v1, "android.resource://com.miui.home/drawable/search_bar_right_microphone_white"

    const-string v2, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_blue"

    const-string v3, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_white"

    const-string v4, "android.resource://com.miui.home/drawable/search_bar_right_xiaoai_colorful"

    .line 55
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleProvider;->RIGHT_ICONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getSearchBarDefaultStyle(I)Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :pswitch_0
    sget-object p1, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_7:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    return-object p1

    .line 106
    :pswitch_1
    sget-object p1, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_6:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    return-object p1

    .line 104
    :pswitch_2
    sget-object p1, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_5:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    return-object p1

    .line 102
    :pswitch_3
    sget-object p1, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_4:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    return-object p1

    .line 100
    :pswitch_4
    sget-object p1, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_3:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    return-object p1

    .line 98
    :pswitch_5
    sget-object p1, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_2:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    return-object p1

    .line 96
    :pswitch_6
    sget-object p1, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_1:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSearchBarStyle()Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;
    .locals 7

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getSearchBarStyle()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 74
    :try_start_0
    new-instance v1, Lcom/mi/google/gson/Gson;

    invoke-direct {v1}, Lcom/mi/google/gson/Gson;-><init>()V

    const-class v3, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {v1, v0, v3}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "SearchBarStyleUtil SearchBarStyleProvider"

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSearchBarStyle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_0
    const-string v3, "SearchBarStyleUtil SearchBarStyleProvider"

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "style="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method private updateSearchBarStyle()V
    .locals 3

    .line 85
    :try_start_0
    new-instance v0, Lcom/mi/google/gson/Gson;

    invoke-direct {v0}, Lcom/mi/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {v0, v1}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setSearchBarStyle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SearchBarStyleUtil SearchBarStyleProvider"

    const-string v2, "updateSearchBarStyle"

    .line 88
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setSearchBarStyle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 145
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "getSearchBarRightIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "getSearchBarExpId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "getSearchBarLeftIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "getSearchBarBg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-object p2

    .line 226
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    if-eqz p1, :cond_1

    const-string p3, "exp_id"

    .line 227
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getExpId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2

    .line 218
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    if-eqz p1, :cond_2

    const-string p3, "rightIcon"

    .line 219
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getRightIconRes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "rightIcon"

    .line 221
    sget-object p3, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_7:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getRightIconRes()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p2

    .line 210
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    if-eqz p1, :cond_3

    const-string p3, "leftIcon"

    .line 211
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getLeftIconRes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p1, "leftIcon"

    .line 213
    sget-object p3, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_7:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getLeftIconRes()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object p2

    .line 198
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    if-eqz p1, :cond_4

    const-string p3, "backgroundMode"

    .line 199
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getBackgroundMode()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "blurStyleRes"

    .line 200
    iget-object p3, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getBlurStyle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "background"

    .line 201
    iget-object p3, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getBackgroundRes()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string p1, "backgroundMode"

    .line 203
    sget-object p3, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_7:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getBackgroundMode()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "blurStyleRes"

    .line 204
    sget-object p3, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_7:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getBlurStyle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "background"

    .line 205
    sget-object p3, Lcom/miui/home/launcher/SearchBarStyleProvider;->STYLE_7:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getBackgroundRes()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object p2

    .line 192
    :pswitch_4
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 193
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleProvider;->updateSearchBarStyle()V

    .line 194
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v0

    :pswitch_5
    if-eqz p3, :cond_8

    const-string p1, "hash"

    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->getHash()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 151
    :cond_5
    new-instance p1, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    invoke-direct {p1}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;-><init>()V

    const-string p2, "exp_id"

    .line 152
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setExpId(Ljava/lang/String;)V

    const-string p2, "hash"

    .line 153
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setHash(Ljava/lang/String;)V

    const-string p2, "leftIcon"

    .line 154
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-lt p2, v2, :cond_6

    .line 155
    sget-object v3, Lcom/miui/home/launcher/SearchBarStyleProvider;->LEFT_ICONS:[Ljava/lang/String;

    array-length v4, v3

    if-gt p2, v4, :cond_6

    sub-int/2addr p2, v2

    .line 156
    aget-object p2, v3, p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setLeftIconRes(Ljava/lang/String;)V

    :cond_6
    const-string p2, "rightIcon"

    .line 158
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-lt p2, v2, :cond_7

    .line 159
    sget-object v3, Lcom/miui/home/launcher/SearchBarStyleProvider;->RIGHT_ICONS:[Ljava/lang/String;

    array-length v4, v3

    if-gt p2, v4, :cond_7

    sub-int/2addr p2, v2

    .line 160
    aget-object p2, v3, p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setRightIconRes(Ljava/lang/String;)V

    :cond_7
    const-string p2, "backgroundMode"

    .line 162
    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setBackgroundMode(I)V

    const-string p2, "background"

    .line 163
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    packed-switch p2, :pswitch_data_1

    :pswitch_6
    goto :goto_5

    :pswitch_7
    const-string p2, "android.resource://com.miui.home/drawable/bg_search_bar_e3_25_non"

    .line 178
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setBackgroundRes(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_8
    const-string p2, "android.resource://com.miui.home/drawable/bg_search_bar_d9_15_non"

    .line 175
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setBackgroundRes(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_9
    const-string p2, "android.resource://com.miui.home/drawable/bg_search_bar_black8_white11"

    .line 172
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setBackgroundRes(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_a
    const-string p2, "android.resource://com.miui.home/drawable/bg_search_bar_black20_white10"

    .line 169
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setBackgroundRes(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_b
    const-string p2, "android.resource://com.miui.home/drawable/bg_search_bar_white85_black5"

    .line 166
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setBackgroundRes(Ljava/lang/String;)V

    :goto_5
    const-string p2, "blurStyleRes"

    .line 182
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->setBlurStyle(Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 184
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleProvider;->updateSearchBarStyle()V

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->URI:Landroid/net/Uri;

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p2, "SearchBarStyleUtil SearchBarStyleProvider"

    .line 186
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47eefa46 -> :sswitch_5
        -0x31ffc737 -> :sswitch_4
        -0x10acbd2b -> :sswitch_3
        0x51d1683 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x36f26da0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleProvider;->getSearchBarStyle()Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->getGroupNum(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleProvider;->getSearchBarDefaultStyle(I)Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider;->mSearchBarStyle:Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleProvider;->updateSearchBarStyle()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
