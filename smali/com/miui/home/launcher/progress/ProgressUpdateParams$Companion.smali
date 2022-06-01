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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$parseUri(Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_1

    .line 74
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final createFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 11
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

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
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

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.intent.extra.update_progress_key"

    .line 43
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.update_application_progress_title"

    .line 45
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.update_progress_status"

    .line 47
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    const-string v5, "android.intent.extra.update_application_progress_icon_uri"

    .line 49
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "miui.intent.extra.update_progress_experiment_params"

    .line 51
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-nez v5, :cond_2

    goto :goto_4

    .line 55
    :cond_2
    array-length v6, v2

    .line 56
    array-length v7, v3

    if-ne v7, v6, :cond_6

    array-length v7, v4

    if-ne v7, v6, :cond_6

    array-length v7, v5

    if-ne v7, v6, :cond_6

    if-eqz p1, :cond_3

    array-length v7, p1

    if-eq v7, v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    .line 61
    new-instance v8, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    aget-object v9, v2, v7

    const-string v10, "packageName[i]"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget v10, v4, v7

    invoke-direct {v8, v9, v0, v10}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    move-object v9, p0

    check-cast v9, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;

    aget-object v10, v5, v7

    invoke-direct {v9, v10}, Lcom/miui/home/launcher/progress/ProgressUpdateParams$Companion;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setIconUri(Landroid/net/Uri;)V

    .line 63
    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 65
    aget-object v9, p1, v7

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setExperimentParams(Ljava/lang/String;)V

    .line 67
    :cond_4
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 70
    :cond_5
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 57
    :cond_6
    :goto_3
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 53
    :cond_7
    :goto_4
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
