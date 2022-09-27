.class public interface abstract Lcom/miui/home/launcher/ItemQuery;
.super Ljava/lang/Object;
.source "ItemQuery.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v0, "favorites._id"

    const-string v1, "intent"

    const-string v2, "favorites.title"

    const-string v3, "iconType"

    const-string v4, "icon"

    const-string v5, "iconPackage"

    const-string v6, "iconResource"

    const-string v7, "container"

    const-string v8, "itemType"

    const-string v9, "appWidgetId"

    const-string v10, "screen"

    const-string v11, "cellX"

    const-string v12, "cellY"

    const-string v13, "spanX"

    const-string v14, "spanY"

    const-string v15, "uri"

    const-string v16, "displayMode"

    const-string v17, "launchCount"

    const-string v18, "sortMode"

    const-string v19, "itemFlags"

    const-string v20, "profileId"

    const-string v21, "isShortcut"

    const-string v22, "label"

    const-string v23, "appWidgetProvider"

    const-string v24, "originWidgetId"

    const-string v25, "product_id"

    .line 6
    filled-new-array/range {v0 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
