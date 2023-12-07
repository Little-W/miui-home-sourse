.class public Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
.super Ljava/lang/Object;


# instance fields
.field public final maxCompleteSessionsCount:I

.field public final maxCustomExceptionEvents:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCustomExceptionEvents:I

    iput p2, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCompleteSessionsCount:I

    return-void
.end method
