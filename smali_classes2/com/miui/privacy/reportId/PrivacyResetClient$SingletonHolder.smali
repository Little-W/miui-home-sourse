.class Lcom/miui/privacy/reportId/PrivacyResetClient$SingletonHolder;
.super Ljava/lang/Object;
.source "PrivacyResetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacy/reportId/PrivacyResetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/privacy/reportId/PrivacyResetClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/miui/privacy/reportId/PrivacyResetClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/privacy/reportId/PrivacyResetClient;-><init>(Lcom/miui/privacy/reportId/PrivacyResetClient$1;)V

    sput-object v0, Lcom/miui/privacy/reportId/PrivacyResetClient$SingletonHolder;->INSTANCE:Lcom/miui/privacy/reportId/PrivacyResetClient;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/privacy/reportId/PrivacyResetClient;
    .locals 1

    .line 45
    sget-object v0, Lcom/miui/privacy/reportId/PrivacyResetClient$SingletonHolder;->INSTANCE:Lcom/miui/privacy/reportId/PrivacyResetClient;

    return-object v0
.end method
