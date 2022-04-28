.class Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$2;
.super Ljava/util/HashSet;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 219
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 220
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.googleassistant"

    const-string v2, "com.google.android.apps.googleassistant.AssistantActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
