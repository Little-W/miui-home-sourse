.class public Lcom/android/systemui/shared/recents/utilities/TraceHelper;
.super Ljava/lang/Object;


# static fields
.field public static final FLAG_ALLOW_BINDER_TRACKING:I = 0x1

.field public static final FLAG_CHECK_FOR_RACE_CONDITIONS:I = 0x4

.field public static final FLAG_IGNORE_BINDERS:I = 0x2

.field public static final FLAG_UI_EVENT:I = 0x5

.field public static INSTANCE:Lcom/android/systemui/shared/recents/utilities/TraceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/utilities/TraceHelper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/TraceHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->INSTANCE:Lcom/android/systemui/shared/recents/utilities/TraceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->INSTANCE:Lcom/android/systemui/shared/recents/utilities/TraceHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->INSTANCE:Lcom/android/systemui/shared/recents/utilities/TraceHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->INSTANCE:Lcom/android/systemui/shared/recents/utilities/TraceHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->endSection(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public beginFlagsOverride(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public beginSection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public beginSection(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public endFlagsOverride(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public endSection(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
