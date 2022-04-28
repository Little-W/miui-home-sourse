.class Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;->this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 321
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;->this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onPackagesChanged(Ljava/lang/String;)V

    return-void
.end method
