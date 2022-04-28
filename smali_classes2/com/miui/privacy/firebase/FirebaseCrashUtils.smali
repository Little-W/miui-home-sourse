.class public Lcom/miui/privacy/firebase/FirebaseCrashUtils;
.super Ljava/lang/Object;
.source "FirebaseCrashUtils.java"


# static fields
.field private static final instance:Lcom/miui/privacy/firebase/FirebaseCrashUtils;


# instance fields
.field private isAllowReportLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/miui/privacy/firebase/FirebaseCrashUtils;

    invoke-direct {v0}, Lcom/miui/privacy/firebase/FirebaseCrashUtils;-><init>()V

    sput-object v0, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->instance:Lcom/miui/privacy/firebase/FirebaseCrashUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->isAllowReportLog:Z

    return-void
.end method

.method public static getInstance()Lcom/miui/privacy/firebase/FirebaseCrashUtils;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->instance:Lcom/miui/privacy/firebase/FirebaseCrashUtils;

    return-object v0
.end method

.method private isAllowReportLog()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->isAllowReportLog:Z

    return v0
.end method


# virtual methods
.method public logException(Ljava/lang/Throwable;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->isAllowReportLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public setIsAllowReportLog(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->isAllowReportLog:Z

    return-void
.end method
