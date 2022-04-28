.class public Lcom/miui/launcher/common/PinItemRequestCompat;
.super Ljava/lang/Object;
.source "PinItemRequestCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/launcher/common/PinItemRequestCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_PIN_ITEM_REQUEST:Ljava/lang/String; = "android.content.pm.extra.PIN_ITEM_REQUEST"

.field public static final REQUEST_TYPE_APPWIDGET:I = 0x2

.field public static final REQUEST_TYPE_SHORTCUT:I = 0x1


# instance fields
.field private final mObject:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/miui/launcher/common/PinItemRequestCompat$1;

    invoke-direct {v0}, Lcom/miui/launcher/common/PinItemRequestCompat$1;-><init>()V

    sput-object v0, Lcom/miui/launcher/common/PinItemRequestCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lcom/miui/launcher/common/PinItemRequestCompat$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/launcher/common/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static getPinItemRequest(Landroid/content/Intent;)Lcom/miui/launcher/common/PinItemRequestCompat;
    .locals 3

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    new-instance v1, Lcom/miui/launcher/common/PinItemRequestCompat;

    invoke-direct {v1, p0}, Lcom/miui/launcher/common/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;)V

    :goto_0
    return-object v1
.end method

.method private invokeMethod(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public accept()Z
    .locals 5

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "accept"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "PinItemRequestCompat"

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LauncherApps.PinItemRequest.accept()  fail! exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public accept(Landroid/os/Bundle;)Z
    .locals 6

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "accept"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 6

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAppWidgetProviderInfo"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 57
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 4

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getExtras"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    const-string v0, "getRequestType"

    .line 47
    invoke-direct {p0, v0}, Lcom/miui/launcher/common/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShortcutInfo()Ljava/lang/Object;
    .locals 1

    const-string v0, "getShortcutInfo"

    .line 51
    invoke-direct {p0, v0}, Lcom/miui/launcher/common/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    const-string v0, "isValid"

    .line 65
    invoke-direct {p0, v0}, Lcom/miui/launcher/common/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/miui/launcher/common/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
