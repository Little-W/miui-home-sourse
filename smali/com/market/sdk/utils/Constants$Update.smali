.class public final Lcom/market/sdk/utils/Constants$Update;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Lcom/market/sdk/utils/Constants$BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Update"
.end annotation


# static fields
.field public static final APK_HASH:Ljava/lang/String; = "apk_hash"

.field public static final APK_PATH:Ljava/lang/String; = "apk_path"

.field public static final APK_URL:Ljava/lang/String; = "apk_url"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE update_download (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_name TEXT,download_id INTEGER, version_code INTEGER, apk_url TEXT, apk_hash TEXT, diff_url TEXT, diff_hash TEXT, apk_path TEXT, UNIQUE(package_name));"

.field public static final DIFF_HASH:Ljava/lang/String; = "diff_hash"

.field public static final DIFF_URL:Ljava/lang/String; = "diff_url"

.field public static final DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final TABLE:Ljava/lang/String; = "update_download"

.field public static final UPDATE_PROJECTION:[Ljava/lang/String;

.field public static final VERSION_CODE:Ljava/lang/String; = "version_code"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "update_download.package_name"

    const-string v1, "update_download.download_id"

    const-string v2, "update_download.version_code"

    const-string v3, "update_download.apk_url"

    const-string v4, "update_download.apk_hash"

    const-string v5, "update_download.diff_url"

    const-string v6, "update_download.diff_hash"

    const-string v7, "update_download.apk_path"

    .line 185
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/utils/Constants$Update;->UPDATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
