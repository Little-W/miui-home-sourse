.class Lcom/miui/privacy/utils/PrivacyPreferenceUtils$Holder;
.super Ljava/lang/Object;
.source "PrivacyPreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacy/utils/PrivacyPreferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/privacy/utils/PrivacyPreferenceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;-><init>(Lcom/miui/privacy/utils/PrivacyPreferenceUtils$1;)V

    sput-object v0, Lcom/miui/privacy/utils/PrivacyPreferenceUtils$Holder;->sInstance:Lcom/miui/privacy/utils/PrivacyPreferenceUtils;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/privacy/utils/PrivacyPreferenceUtils;
    .locals 1

    .line 13
    sget-object v0, Lcom/miui/privacy/utils/PrivacyPreferenceUtils$Holder;->sInstance:Lcom/miui/privacy/utils/PrivacyPreferenceUtils;

    return-object v0
.end method
