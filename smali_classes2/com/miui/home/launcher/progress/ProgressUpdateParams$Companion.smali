.class public final Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;
.super Ljava/lang/Object;
.source "ProgressUpdateParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/progress/ProgressUpdateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$parseUri(Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_1

    .line 87
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final createFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/progress/ProgressUpdateParams;",
            ">;"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.miui.home.extra.server_name"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    const-string v1, "intent.getStringExtra(Ap\u2026s.getSender(intent) ?: \"\""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.intent.extra.update_progress_key"

    .line 46
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.update_application_progress_title"

    .line 48
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.update_progress_status"

    .line 50
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    const-string v5, "android.intent.extra.update_application_progress_icon_uri"

    .line 52
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "miui.intent.extra.update_progress_experiment_params"

    .line 54
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "miui.intent.extra.update_progress_operate_icon_params"

    .line 56
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    if-nez v5, :cond_2

    goto :goto_4

    .line 60
    :cond_2
    array-length v7, v2

    .line 65
    array-length v8, v3

    if-ne v8, v7, :cond_8

    array-length v8, v4

    if-ne v8, v7, :cond_8

    array-length v8, v5

    if-ne v8, v7, :cond_8

    if-eqz v6, :cond_3

    array-length v8, v6

    if-ne v8, v7, :cond_8

    :cond_3
    if-eqz p1, :cond_4

    array-length v8, p1

    if-eq v8, v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_7

    .line 70
    new-instance v9, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    aget-object v10, v2, v8

    const-string v11, "packageName[i]"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget v11, v4, v8

    invoke-direct {v9, v10, v0, v11}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    move-object v10, p0

    check-cast v10, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;

    aget-object v11, v5, v8

    invoke-direct {v10, v11}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setIconUri(Landroid/net/Uri;)V

    .line 72
    aget-object v10, v3, v8

    invoke-virtual {v9, v10}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 73
    invoke-virtual {v9, v10}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setFromIntentSource(Z)V

    if-eqz v6, :cond_5

    .line 75
    aget-object v10, v6, v8

    invoke-virtual {v9, v10}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setExperimentParams(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 78
    aget-object v10, p1, v8

    invoke-virtual {v9, v10}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setOperationIconInfo(Ljava/lang/String;)V

    .line 80
    :cond_6
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 83
    :cond_7
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 66
    :cond_8
    :goto_3
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 58
    :cond_9
    :goto_4
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
