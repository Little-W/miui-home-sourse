.class Lcom/miui/home/launcher/LauncherMenu$SpinnerCheckedProvider;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpinnerCheckedProvider"
.end annotation


# instance fields
.field private mSpinner:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$SpinnerCheckedProvider;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    return-void
.end method


# virtual methods
.method public isChecked(I)Z
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu$SpinnerCheckedProvider;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
