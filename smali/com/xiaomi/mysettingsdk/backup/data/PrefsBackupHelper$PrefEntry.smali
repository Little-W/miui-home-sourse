.class public Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
.super Ljava/lang/Object;
.source "PrefsBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefEntry"
.end annotation


# instance fields
.field private mCloudKey:Ljava/lang/String;

.field private mDefaultValue:Ljava/lang/Object;

.field private mLocalKey:Ljava/lang/String;

.field private mValueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;->mCloudKey:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;->mLocalKey:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;->mValueClass:Ljava/lang/Class;

    .line 23
    iput-object p4, p0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 3

    .line 63
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createBoolEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 2

    .line 59
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 3

    .line 47
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createIntEntry(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 2

    .line 43
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createLongEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 3

    .line 55
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createLongEntry(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 2

    .line 51
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 3

    .line 71
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createStringEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 2

    .line 67
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getCloudKey()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;->mCloudKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;->mDefaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocalKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;->mLocalKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/PrefsBackupHelper$PrefEntry;->mValueClass:Ljava/lang/Class;

    return-object v0
.end method
