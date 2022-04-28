.class Lcom/miui/home/settings/BaseSettingsSearchProvider$SearchContract;
.super Ljava/lang/Object;
.source "BaseSettingsSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/BaseSettingsSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchContract"
.end annotation


# static fields
.field static final SEARCH_RESULT_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "title"

    const-string v1, "summaryOn"

    const-string v2, "summaryOff"

    const-string v3, "keywords"

    const-string v4, "iconResId"

    const-string v5, "intentAction"

    const-string v6, "intentTargetPackage"

    const-string v7, "intentTargetClass"

    const-string v8, "uriString"

    const-string v9, "extras"

    const-string v10, "other"

    .line 191
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/settings/BaseSettingsSearchProvider$SearchContract;->SEARCH_RESULT_COLUMNS:[Ljava/lang/String;

    return-void
.end method
