.class public Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;
.super Ljava/lang/Object;
.source "GestureLearnAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/settings/GestureLearnAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DismissStatus"
.end annotation


# instance fields
.field public isCheckboxChecked:Z

.field public isClickOnDialog:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isClickOnDialog:Z

    .line 93
    iput-boolean p2, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    return-void
.end method
