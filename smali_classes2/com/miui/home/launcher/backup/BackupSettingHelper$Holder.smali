.class Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;
.super Ljava/lang/Object;
.source "BackupSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/backup/BackupSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/home/launcher/backup/BackupSettingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/miui/home/launcher/backup/BackupSettingHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/backup/BackupSettingHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/backup/BackupSettingHelper;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/backup/BackupSettingHelper;
    .locals 1

    .line 14
    sget-object v0, Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/backup/BackupSettingHelper;

    return-object v0
.end method
