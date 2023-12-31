.class public final synthetic Lcom/google/firebase/crashlytics/-$$Lambda$CrashlyticsRegistrar$aBuXIXlTYD2Kajd_VBsZ-5OANwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field private final synthetic f$0:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/-$$Lambda$CrashlyticsRegistrar$aBuXIXlTYD2Kajd_VBsZ-5OANwA;->f$0:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/-$$Lambda$CrashlyticsRegistrar$aBuXIXlTYD2Kajd_VBsZ-5OANwA;->f$0:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->lambda$aBuXIXlTYD2Kajd_VBsZ-5OANwA(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    return-object p0
.end method
