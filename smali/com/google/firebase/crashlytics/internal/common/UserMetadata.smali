.class public Lcom/google/firebase/crashlytics/internal/common/UserMetadata;
.super Ljava/lang/Object;
.source "UserMetadata.java"


# instance fields
.field private final customKeys:Lcom/google/firebase/crashlytics/internal/common/KeysMap;

.field private final internalKeys:Lcom/google/firebase/crashlytics/internal/common/KeysMap;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->userId:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/KeysMap;

    const/16 v1, 0x40

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/KeysMap;-><init>(II)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->customKeys:Lcom/google/firebase/crashlytics/internal/common/KeysMap;

    .line 29
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/KeysMap;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/KeysMap;-><init>(II)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->internalKeys:Lcom/google/firebase/crashlytics/internal/common/KeysMap;

    return-void
.end method


# virtual methods
.method public getCustomKeys()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->customKeys:Lcom/google/firebase/crashlytics/internal/common/KeysMap;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/KeysMap;->getKeys()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getInternalKeys()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->internalKeys:Lcom/google/firebase/crashlytics/internal/common/KeysMap;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/KeysMap;->getKeys()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public setCustomKeys(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->customKeys:Lcom/google/firebase/crashlytics/internal/common/KeysMap;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/KeysMap;->setKeys(Ljava/util/Map;)V

    return-void
.end method
